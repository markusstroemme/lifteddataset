@global_var_b44a8 = external constant [10 x i8]
@global_var_b44f0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_af01:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_b01f.thread, label %dec_label_pc_af58

dec_label_pc_b01f.thread:                         ; preds = %dec_label_pc_af01
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_b085

dec_label_pc_af58:                                ; preds = %dec_label_pc_af01
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b44a8)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_b01f.thread7, label %dec_label_pc_afaf

dec_label_pc_afaf:                                ; preds = %dec_label_pc_af58
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %dec_label_pc_b01f.thread7, label %dec_label_pc_b01f

dec_label_pc_b01f.thread7:                        ; preds = %dec_label_pc_afaf, %dec_label_pc_af58
  %12 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_b085

dec_label_pc_b01f:                                ; preds = %dec_label_pc_afaf
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %9 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  %20 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72, align 8
  %21 = icmp ugt i32 %19, 9
  br i1 %21, label %dec_label_pc_b085, label %dec_label_pc_b053

dec_label_pc_b053:                                ; preds = %dec_label_pc_b01f
  %22 = sext i32 %19 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %13, -64
  %25 = add i64 %23, %24
  %26 = inttoptr i64 %25 to ptr
  store i32 1, ptr %26, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_b069

dec_label_pc_b069:                                ; preds = %dec_label_pc_b069, %dec_label_pc_b053
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  %30 = load i32, ptr %29, align 4
  call void @printIntLine(i32 %30)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_b096, label %dec_label_pc_b069

dec_label_pc_b085:                                ; preds = %dec_label_pc_b01f.thread7, %dec_label_pc_b01f.thread, %dec_label_pc_b01f
  call void @printLine(ptr @global_var_b44f0)
  br label %dec_label_pc_b096

dec_label_pc_b096:                                ; preds = %dec_label_pc_b069, %dec_label_pc_b085
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_b0ab, label %dec_label_pc_b0a6

dec_label_pc_b0a6:                                ; preds = %dec_label_pc_b096
  call void @__stack_chk_fail()
  br label %dec_label_pc_b0ab

dec_label_pc_b0ab:                                ; preds = %dec_label_pc_b0a6, %dec_label_pc_b096
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

