define void @anon1() local_unnamed_addr {
dec_label_pc_69a33:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_69ac6, label %dec_label_pc_69a98.lr.ph

dec_label_pc_69a98.lr.ph:                         ; preds = %dec_label_pc_69a33
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_69a98

dec_label_pc_69a98:                               ; preds = %dec_label_pc_69a98, %dec_label_pc_69a98.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %9 = add i64 %.reload, %7
  %10 = add i64 %.reload, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %14, %5
  store i64 %14, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_69ac6, label %dec_label_pc_69a98

dec_label_pc_69ac6:                               ; preds = %dec_label_pc_69a98, %dec_label_pc_69a33
  call void @printLine(ptr %1)
  %15 = bitcast ptr %1 to ptr
  call void @free(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_69af3, label %dec_label_pc_69aee

dec_label_pc_69aee:                               ; preds = %dec_label_pc_69ac6
  call void @__stack_chk_fail()
  br label %dec_label_pc_69af3

dec_label_pc_69af3:                               ; preds = %dec_label_pc_69aee, %dec_label_pc_69ac6
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_69b3f:
  %0 = call ptr @malloc(i32 11)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_69b6e, label %dec_label_pc_69b64

dec_label_pc_69b64:                               ; preds = %dec_label_pc_69b3f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_69b6e:                               ; preds = %dec_label_pc_69b3f
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
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

