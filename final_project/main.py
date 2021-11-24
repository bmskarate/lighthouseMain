# from simple_facerec import SimpleFacerec
# import cv2
# import face_recognition

# sfr = SimpleFacerec()
# sfr.load_encoding_images('images/')

# # load cam
# cap = cv2.VideoCapture(0)

# while True:
#     ret, frame = cap.read()

#     # detect faces
#     face_locations, face_names = sfr.detect_known_faces(frame)
#     for face_loc, name in zip(face_locations, face_names):
#         # print(face_loc) did this to see the coordinates for the face
#         y1, x1, y2, x2 = face_loc[0], face_loc[1], face_loc[2], face_loc[3]

#         cv2.putText(frame, name, (x1, y1 - 10), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 0, 200), 2)
#         cv2.rectangle(frame , (x1, y1), (x2, y2), (0, 0, 200), 3)

#     cv2.imshow('frame', frame)

#     # 0 is close, 1 is open
#     key = cv2.waitKey(1)

#     if key == 27:
#         break

# cap.release()
# cv2.destroyAllWindows()

import cv2
import face_recognition
from datetime import datetime
from simple_facerec import SimpleFacerec
sfr = SimpleFacerec()
sfr.load_encoding_images('images/')


def markAttendance(name):
    import time
    """
    Attendance marking function
    """
    with open('Attendance.csv','r+') as f: 
        # if name recognised, mark attendance in new row - WORKING but no repeats (in and out)
        # future, re-add if 5 minutes passed, mark out
        f.seek(0)
        lines = f.readlines()
        name_list = []
        for line in lines:
            name_list.append(line.split(',')[0])
        if name not in name_list:
            f.write(name + ',' + str(datetime.now()) + '\n')
        else:
            print('Already marked')
        



        # # working but every frame
        # myDataList = f.readlines()
        # nameList = []
        # for line in myDataList:
        #     entry = line.split(',')
        #     nameList.append(entry[0])
        # if name not in nameList:
        #     now = datetime.now()
        #     time = now.strftime('%I:%M:%S:%p')
        #     date = now.strftime('%d-%B-%Y')
        #     f.writelines(f'n{name}, {time}, {date}')


# load cam
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()

    # detect faces
    face_locations, face_names = sfr.detect_known_faces(frame)
    for face_loc, name in zip(face_locations, face_names):
        # print(face_loc) did this to see the coordinates for the face
        y1, x1, y2, x2 = face_loc[0], face_loc[1], face_loc[2], face_loc[3]

        cv2.putText(frame, name, (x1, y1 - 10), cv2.FONT_HERSHEY_DUPLEX, 2, (0, 0, 200), 2) # 255's was 0,0,200
        cv2.rectangle(frame , (x1, y1), (x2, y2), (0, 0, 200), 4) # cv2.filled WAS 3.0
        markAttendance(name)

    cv2.imshow('frame', frame)

    # 0 is close, 1 is open
    key = cv2.waitKey(1)

    if key == 27:
        break

cap.release()
cv2.destroyAllWindows()