define void @anon0() local_unnamed_addr {
dec_label_pc_32506:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-27 to ptr
  store i8 0, ptr %1, align 8
  %2 = ptrtoint ptr %stack_var_-27 to i64
  call void @anon1(i64 %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_32559, label %dec_label_pc_32554

dec_label_pc_32554:                               ; preds = %dec_label_pc_32506
  call void @__stack_chk_fail()
  br label %dec_label_pc_32559

dec_label_pc_32559:                               ; preds = %dec_label_pc_32554, %dec_label_pc_32506
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_325c5:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_3264c, label %dec_label_pc_3261e.lr.ph

dec_label_pc_3261e.lr.ph:                         ; preds = %dec_label_pc_325c5
  %6 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_3261e

dec_label_pc_3261e:                               ; preds = %dec_label_pc_3261e, %dec_label_pc_3261e.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %myStruct
  %8 = add i64 %.reload, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = inttoptr i64 %7 to ptr
  store i8 %10, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %12, %4
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3264c, label %dec_label_pc_3261e

dec_label_pc_3264c:                               ; preds = %dec_label_pc_3261e, %dec_label_pc_325c5
  %13 = inttoptr i64 %myStruct to ptr
  call void @printLine(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_3266d, label %dec_label_pc_32668

dec_label_pc_32668:                               ; preds = %dec_label_pc_3264c
  call void @__stack_chk_fail()
  br label %dec_label_pc_3266d

dec_label_pc_3266d:                               ; preds = %dec_label_pc_32668, %dec_label_pc_3264c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

