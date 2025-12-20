define void @anon1() local_unnamed_addr {
dec_label_pc_c614:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_c650, label %dec_label_pc_c646

dec_label_pc_c646:                                ; preds = %dec_label_pc_c614
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c650:                                ; preds = %dec_label_pc_c614
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %2, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_c692, label %dec_label_pc_c68d

dec_label_pc_c68d:                                ; preds = %dec_label_pc_c650
  call void @__stack_chk_fail()
  br label %dec_label_pc_c692

dec_label_pc_c692:                                ; preds = %dec_label_pc_c68d, %dec_label_pc_c650
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_c788:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %dataVoidPtr)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_c834, label %dec_label_pc_c80a.lr.ph

dec_label_pc_c80a.lr.ph:                          ; preds = %dec_label_pc_c788
  %3 = sext i32 %1 to i64
  %4 = ptrtoint ptr %dataVoidPtr to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_c80a

dec_label_pc_c80a:                                ; preds = %dec_label_pc_c80a.lr.ph, %dec_label_pc_c80a
  %.reload = load i64, ptr %.reg2mem, align 8
  %6 = add i64 %.reload, %4
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i64 %.reload, %5
  %10 = inttoptr i64 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = add nuw i64 %.reload, 1
  %12 = icmp ult i64 %11, %3
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %12, label %dec_label_pc_c80a, label %dec_label_pc_c834

dec_label_pc_c834:                                ; preds = %dec_label_pc_c80a, %dec_label_pc_c788
  call void @printLine(ptr %dataVoidPtr)
  %13 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_c865, label %dec_label_pc_c860

dec_label_pc_c860:                                ; preds = %dec_label_pc_c834
  call void @__stack_chk_fail()
  br label %dec_label_pc_c865

dec_label_pc_c865:                                ; preds = %dec_label_pc_c860, %dec_label_pc_c834
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

