define void @anon0() local_unnamed_addr {
dec_label_pc_64438:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6447c, label %dec_label_pc_64472

dec_label_pc_64472:                               ; preds = %dec_label_pc_64438
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6447c:                               ; preds = %dec_label_pc_64438
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_6449d, label %dec_label_pc_64498

dec_label_pc_64498:                               ; preds = %dec_label_pc_6447c
  call void @__stack_chk_fail()
  br label %dec_label_pc_6449d

dec_label_pc_6449d:                               ; preds = %dec_label_pc_64498, %dec_label_pc_6447c
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_6451b:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %1, ptr nonnull %2)
  call void @printLine(ptr %1)
  %4 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_6459d, label %dec_label_pc_64598

dec_label_pc_64598:                               ; preds = %dec_label_pc_6451b
  call void @__stack_chk_fail()
  br label %dec_label_pc_6459d

dec_label_pc_6459d:                               ; preds = %dec_label_pc_64598, %dec_label_pc_6451b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

