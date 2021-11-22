from simple_facerec import SimpleFacerec
sfr = SimpleFacerec()
sfr.load_encoding_images('images/')

# load cam
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()

    # detect faces
    face_locations, face_names = sfr.detect_known_faces(frame)
    for face_loc, name in zip(face_locations, face_names):
        # print(face_loc) did this to see the coordinates for the face
        y1, x1, y2, x2 = face_loc[0], face_loc[1], face_loc[2], face_loc[3]

        cv2.putText(frame, name, (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 200), 2)
        cv2.rectangle(frame , (x1, y1), (x2, y2), (0, 0, 200), 3)

    cv2.imshow('frame', frame)

    # 0 is close, 1 is open
    key = cv2.waitKey(1)

    if key == 27:
        break

cap.release()
cv2.destroyAllWindows()