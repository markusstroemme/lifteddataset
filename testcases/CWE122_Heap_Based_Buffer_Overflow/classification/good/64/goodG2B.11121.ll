define void @anon1() local_unnamed_addr {
dec_label_pc_69e30:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_69e74, label %dec_label_pc_69e6a

dec_label_pc_69e6a:                               ; preds = %dec_label_pc_69e30
  call void @exit(i32 -1)
  unreachable

dec_label_pc_69e74:                               ; preds = %dec_label_pc_69e30
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_69e95, label %dec_label_pc_69e90

dec_label_pc_69e90:                               ; preds = %dec_label_pc_69e74
  call void @__stack_chk_fail()
  br label %dec_label_pc_69e95

dec_label_pc_69e95:                               ; preds = %dec_label_pc_69e90, %dec_label_pc_69e74
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_69f6d:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %dec_label_pc_69fff, label %dec_label_pc_69fd1.lr.ph

dec_label_pc_69fd1.lr.ph:                         ; preds = %dec_label_pc_69f6d
  %6 = ptrtoint ptr %dataVoidPtr to i64
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_69fd1

dec_label_pc_69fd1:                               ; preds = %dec_label_pc_69fd1, %dec_label_pc_69fd1.lr.ph
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
  br i1 %exitcond, label %dec_label_pc_69fff, label %dec_label_pc_69fd1

dec_label_pc_69fff:                               ; preds = %dec_label_pc_69fd1, %dec_label_pc_69f6d
  call void @printLine(ptr %dataVoidPtr)
  %14 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_6a02c, label %dec_label_pc_6a027

dec_label_pc_6a027:                               ; preds = %dec_label_pc_69fff
  call void @__stack_chk_fail()
  br label %dec_label_pc_6a02c

dec_label_pc_6a02c:                               ; preds = %dec_label_pc_6a027, %dec_label_pc_69fff
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

