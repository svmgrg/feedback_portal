from django.db import connection
cursor = connection.cursor()
from list_questions import f_c, f_i, f_l, f_t
row = []
for i in range(len(f_c)):
    cursor.execute('''
    SELECT %s, count(*) 
    FROM feedback_course
    WHERE course_id = %s
    GROUP BY %s
    ''', [f_c[i][0], course_id, f_c[i][0]]
    )
    row = row+list(cursor.fetchall())

    
