define void @anon1() local_unnamed_addr {
dec_label_pc_42551:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataBuffer_-128, align 8
  %4 = bitcast ptr %dataBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %5, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds [100 x i8], ptr %dataBuffer_-128, i64 0, i64 0
  call void @anon0(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_425b6, label %dec_label_pc_425b1

dec_label_pc_425b1:                               ; preds = %dec_label_pc_42551
  call void @__stack_chk_fail()
  br label %dec_label_pc_425b6

dec_label_pc_425b6:                               ; preds = %dec_label_pc_425b1, %dec_label_pc_42551
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_426a0:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %dataVoidPtr)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4274c, label %dec_label_pc_42722.lr.ph

dec_label_pc_42722.lr.ph:                         ; preds = %dec_label_pc_426a0
  %3 = sext i32 %1 to i64
  %4 = ptrtoint ptr %dataVoidPtr to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_42722

dec_label_pc_42722:                               ; preds = %dec_label_pc_42722.lr.ph, %dec_label_pc_42722
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
  br i1 %12, label %dec_label_pc_42722, label %dec_label_pc_4274c

dec_label_pc_4274c:                               ; preds = %dec_label_pc_42722, %dec_label_pc_426a0
  call void @printLine(ptr %dataVoidPtr)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_42771, label %dec_label_pc_4276c

dec_label_pc_4276c:                               ; preds = %dec_label_pc_4274c
  call void @__stack_chk_fail()
  br label %dec_label_pc_42771

dec_label_pc_42771:                               ; preds = %dec_label_pc_4276c, %dec_label_pc_4274c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

