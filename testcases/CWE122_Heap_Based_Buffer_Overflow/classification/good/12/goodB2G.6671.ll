@global_var_b7000 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3fa85:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  br i1 %2, label %dec_label_pc_3fb8c, label %dec_label_pc_3fac8

dec_label_pc_3fac8:                               ; preds = %dec_label_pc_3fa85
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3faf0, label %dec_label_pc_3fadd

dec_label_pc_3fadd:                               ; preds = %dec_label_pc_3fac8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3faf0:                               ; preds = %dec_label_pc_3fac8, %dec_label_pc_3faf0
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %7 = mul i64 %indvars.iv9.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_3fb6c, label %dec_label_pc_3faf0

dec_label_pc_3fb6c:                               ; preds = %dec_label_pc_3faf0
  call void @printLine(ptr @global_var_b7000)
  call void @free(ptr %3)
  br label %dec_label_pc_3fc4b

dec_label_pc_3fb8c:                               ; preds = %dec_label_pc_3fa85
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3fbb4, label %dec_label_pc_3fba1

dec_label_pc_3fba1:                               ; preds = %dec_label_pc_3fb8c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3fbb4:                               ; preds = %dec_label_pc_3fb8c, %dec_label_pc_3fbb4
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %4
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3fc30, label %dec_label_pc_3fbb4

dec_label_pc_3fc30:                               ; preds = %dec_label_pc_3fbb4
  call void @printLine(ptr @global_var_b7000)
  call void @free(ptr %3)
  br label %dec_label_pc_3fc4b

dec_label_pc_3fc4b:                               ; preds = %dec_label_pc_3fc30, %dec_label_pc_3fb6c
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

