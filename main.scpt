FasdUAS 1.101.10   ��   ��    k             l     ����  I    �� ��
�� .sysoexecTEXT���     TEXT  m      	 	 � 
 
� 
 # c r e a t e   a   8 G B   R a m D i s k 
 i f   !   t e s t   - e   / V o l u m e s / " R a m d i s k "   ;   t h e n 
 d i s k u t i l   e r a s e v o l u m e   H F S +   " R a m D i s k "   ` h d i u t i l   a t t a c h   - n o m o u n t   r a m : / / 8 1 9 2 0 0 0 ` 
 f i 
 
 #   c r e a t e   d i r e c t o r y   t o   s a v e   f i l e 
 m k d i r   / V o l u m e s / R a m d i s k / T e m p D o w n l o a d s 
 m k d i r   - p   / V o l u m e s / R a m d i s k / L i b r a r y / D e v e l o p e r / X c o d e / D e r i v e d D a t a 
 m k d i r   - p   / V o l u m e s / R a m d i s k / L i b r a r y / D e v e l o p e r / C o r e S i m u l a t o r / D e v i c e s 
 m k d i r   - p   / V o l u m e s / R a m d i s k / L i b r a r y / C a c h e s / G o o g l e 
 m k d i r   - p   / V o l u m e s / R a m d i s k / L i b r a r y / C a c h e s / c o m . a p p l e . S a f a r i / f s C a c h e d D a t a 
 m k d i r   - p   / V o l u m e s / R a m d i s k / A p p l i c a t i o n s 
 
 #   r e a d   f i l e   f r o m   d i s k   t o   R a m D i s k 
 c p   - r   / A p p l i c a t i o n s / G o o g l e C h r o m e . a p p     / V o l u m e s / R a m D i s k / A p p l i c a t i o n s 
 c p   - r   / A p p l i c a t i o n s / G o L a n d . a p p     / V o l u m e s / R a m D i s k / A p p l i c a t i o n s 
 c d   / V o l u m e s / R a m D i s k / A p p l i c a t i o n s / G o L a n d . a p p / C o n t e n t s 
 r m   - r f     j d k 
 
 
 #   s t a r t   l o c a l   S V N   s e r v e r 
 s v n s e r v e   - d   - r   / U s e r s / W h i s p e r R a i n / D o c u m e n t s / R a m S v n / W o r k 
 
 
 # r e a d   f i l e   f r o m   S V N   s e r v e r 
 c d   / V o l u m e s / R a m D i s k 
 s v n   c h e c k o u t   f i l e : / / / U s e r s / W h i s p e r R a i n / D o c u m e n t s / R a m S v n / W o r k 
 
 
 # w r i t e   f i l e   f r o m   R a m D i s k   t o   d i s k 
 w h i l e   t r u e 
   d o 
     c d   / V o l u m e s / R a m D i s k / W o r k 
     s v n   a d d   .   - - f o r c e 
     s v n   c o m m i t   - m     $ c u r r e n t   d a t e 
     s a y   ' s y n c   d a t a   t o   S V N ' 
     s l e e p   4 0 0 
       
   d o n e 
     
 
��  ��  ��     ��  l     ��������  ��  ��  ��       ��  ��    ��
�� .aevtoappnull  �   � ****  �� ����  ��
�� .aevtoappnull  �   � ****  k         ����  ��  ��        	��
�� .sysoexecTEXT���     TEXT�� �j  ascr  ��ޭ