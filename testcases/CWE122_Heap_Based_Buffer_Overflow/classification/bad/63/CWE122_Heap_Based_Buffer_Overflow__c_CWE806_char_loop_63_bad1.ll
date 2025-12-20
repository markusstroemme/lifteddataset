define void @anon0() local_unnamed_addr {
dec_label_pc_c2d1:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_c30d, label %dec_label_pc_c303

dec_label_pc_c303:                                ; preds = %dec_label_pc_c2d1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c30d:                                ; preds = %dec_label_pc_c2d1
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_c34f, label %dec_label_pc_c34a

dec_label_pc_c34a:                                ; preds = %dec_label_pc_c30d
  call void @__stack_chk_fail()
  br label %dec_label_pc_c34f

dec_label_pc_c34f:                                ; preds = %dec_label_pc_c34a, %dec_label_pc_c30d
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_c3e6:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_c48a, label %dec_label_pc_c460.lr.ph

dec_label_pc_c460.lr.ph:                          ; preds = %dec_label_pc_c3e6
  %4 = sext i32 %2 to i64
  %5 = ptrtoint ptr %dataPtr to i64
  %6 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_c460

dec_label_pc_c460:                                ; preds = %dec_label_pc_c460.lr.ph, %dec_label_pc_c460
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i64 %.reload, %6
  %11 = inttoptr i64 %10 to ptr
  store i8 %9, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %13 = icmp ult i64 %12, %4
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_c460, label %dec_label_pc_c48a

dec_label_pc_c48a:                                ; preds = %dec_label_pc_c460, %dec_label_pc_c3e6
  call void @printLine(ptr %1)
  %14 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_c4bb, label %dec_label_pc_c4b6

dec_label_pc_c4b6:                                ; preds = %dec_label_pc_c48a
  call void @__stack_chk_fail()
  br label %dec_label_pc_c4bb

dec_label_pc_c4bb:                                ; preds = %dec_label_pc_c4b6, %dec_label_pc_c48a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

