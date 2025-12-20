define void @anon0() local_unnamed_addr {
dec_label_pc_64623:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_64667, label %dec_label_pc_6465d

dec_label_pc_6465d:                               ; preds = %dec_label_pc_64623
  call void @exit(i32 -1)
  unreachable

dec_label_pc_64667:                               ; preds = %dec_label_pc_64623
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_64688, label %dec_label_pc_64683

dec_label_pc_64683:                               ; preds = %dec_label_pc_64667
  call void @__stack_chk_fail()
  br label %dec_label_pc_64688

dec_label_pc_64688:                               ; preds = %dec_label_pc_64683, %dec_label_pc_64667
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_64706:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call ptr @strcpy(ptr %dataVoidPtr, ptr nonnull %1)
  call void @printLine(ptr %dataVoidPtr)
  %3 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_64790, label %dec_label_pc_6478b

dec_label_pc_6478b:                               ; preds = %dec_label_pc_64706
  call void @__stack_chk_fail()
  br label %dec_label_pc_64790

dec_label_pc_64790:                               ; preds = %dec_label_pc_6478b, %dec_label_pc_64706
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

