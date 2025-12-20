define void @anon1() local_unnamed_addr {
dec_label_pc_69bdb:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_69c1f, label %dec_label_pc_69c15

dec_label_pc_69c15:                               ; preds = %dec_label_pc_69bdb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_69c1f:                               ; preds = %dec_label_pc_69bdb
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_69c40, label %dec_label_pc_69c3b

dec_label_pc_69c3b:                               ; preds = %dec_label_pc_69c1f
  call void @__stack_chk_fail()
  br label %dec_label_pc_69c40

dec_label_pc_69c40:                               ; preds = %dec_label_pc_69c3b, %dec_label_pc_69c1f
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_69d10:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_69d9a, label %dec_label_pc_69d6c.lr.ph

dec_label_pc_69d6c.lr.ph:                         ; preds = %dec_label_pc_69d10
  %6 = ptrtoint ptr %dataPtr to i64
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_69d6c

dec_label_pc_69d6c:                               ; preds = %dec_label_pc_69d6c, %dec_label_pc_69d6c.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %6
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %13, %4
  store i64 %13, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_69d9a, label %dec_label_pc_69d6c

dec_label_pc_69d9a:                               ; preds = %dec_label_pc_69d6c, %dec_label_pc_69d10
  %14 = bitcast ptr %dataPtr to ptr
  call void @printLine(ptr %14)
  %15 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_69dc7, label %dec_label_pc_69dc2

dec_label_pc_69dc2:                               ; preds = %dec_label_pc_69d9a
  call void @__stack_chk_fail()
  br label %dec_label_pc_69dc7

dec_label_pc_69dc7:                               ; preds = %dec_label_pc_69dc2, %dec_label_pc_69d9a
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

