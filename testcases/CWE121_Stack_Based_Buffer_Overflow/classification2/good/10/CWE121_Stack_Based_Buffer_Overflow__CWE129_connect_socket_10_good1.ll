@global_var_b4748 = external constant [10 x i8]
@global_var_b4778 = external constant [21 x i8]
@global_var_b4790 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_ef300 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_d745:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-88.1.reg2mem = alloca i32, align 4
  %stack_var_-88.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i32, ptr @global_var_ef080, align 4
  %3 = icmp eq i32 %2, 0
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_d84a, label %dec_label_pc_d775

dec_label_pc_d775:                                ; preds = %dec_label_pc_d745
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_d84a, label %dec_label_pc_d79d

dec_label_pc_d79d:                                ; preds = %dec_label_pc_d775
  %6 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %7 = call i32 @inet_addr(ptr @global_var_b4748)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_d840, label %dec_label_pc_d7f4

dec_label_pc_d7f4:                                ; preds = %dec_label_pc_d79d
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_d840, label %dec_label_pc_d81b

dec_label_pc_d81b:                                ; preds = %dec_label_pc_d7f4
  %15 = sext i32 %12 to i64
  %16 = add i64 %0, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br label %dec_label_pc_d840

dec_label_pc_d840:                                ; preds = %dec_label_pc_d79d, %dec_label_pc_d81b, %dec_label_pc_d7f4
  %stack_var_-88.0.ph.reload = load i32, ptr %stack_var_-88.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %4)
  store i32 %stack_var_-88.0.ph.reload, ptr %stack_var_-88.1.reg2mem, align 4
  br label %dec_label_pc_d84a

dec_label_pc_d84a:                                ; preds = %dec_label_pc_d775, %dec_label_pc_d840, %dec_label_pc_d745
  %22 = load i32, ptr @global_var_ef300, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %dec_label_pc_d865, label %dec_label_pc_d854

dec_label_pc_d854:                                ; preds = %dec_label_pc_d84a
  call void @printLine(ptr @global_var_b4778)
  br label %dec_label_pc_d8dc

dec_label_pc_d865:                                ; preds = %dec_label_pc_d84a
  %stack_var_-88.1.reload = load i32, ptr %stack_var_-88.1.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %24 = icmp ugt i32 %stack_var_-88.1.reload, 9
  br i1 %24, label %dec_label_pc_d8cb, label %dec_label_pc_d899

dec_label_pc_d899:                                ; preds = %dec_label_pc_d865
  %25 = sext i32 %stack_var_-88.1.reload to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %0, -64
  %28 = add i64 %26, %27
  %29 = inttoptr i64 %28 to ptr
  store i32 1, ptr %29, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_d8af

dec_label_pc_d8af:                                ; preds = %dec_label_pc_d8af, %dec_label_pc_d899
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %30 = mul i64 %indvars.iv.reload, 4
  %31 = add i64 %30, %27
  %32 = inttoptr i64 %31 to ptr
  %33 = load i32, ptr %32, align 4
  call void @printIntLine(i32 %33)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_d8dc, label %dec_label_pc_d8af

dec_label_pc_d8cb:                                ; preds = %dec_label_pc_d865
  call void @printLine(ptr @global_var_b4790)
  br label %dec_label_pc_d8dc

dec_label_pc_d8dc:                                ; preds = %dec_label_pc_d8af, %dec_label_pc_d8cb, %dec_label_pc_d854
  %34 = call i64 @__readfsqword(i64 40)
  %35 = icmp eq i64 %1, %34
  br i1 %35, label %dec_label_pc_d8f1, label %dec_label_pc_d8ec

dec_label_pc_d8ec:                                ; preds = %dec_label_pc_d8dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_d8f1

dec_label_pc_d8f1:                                ; preds = %dec_label_pc_d8ec, %dec_label_pc_d8dc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

