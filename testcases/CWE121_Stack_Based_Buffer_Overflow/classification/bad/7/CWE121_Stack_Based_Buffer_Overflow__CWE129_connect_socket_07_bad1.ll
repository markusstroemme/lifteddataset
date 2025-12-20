@global_var_b45f8 = external constant [10 x i8]
@global_var_b4608 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c162:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-88.1.reg2mem = alloca i32, align 4
  %stack_var_-88.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i32, ptr @global_var_ef014, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_c268, label %dec_label_pc_c193

dec_label_pc_c193:                                ; preds = %dec_label_pc_c162
  %5 = call i32 @socket(i32 2, i32 1, i32 6)
  %6 = icmp eq i32 %5, -1
  store i32 -1, ptr %stack_var_-88.1.reg2mem, align 4
  br i1 %6, label %dec_label_pc_c268, label %dec_label_pc_c1bb

dec_label_pc_c1bb:                                ; preds = %dec_label_pc_c193
  %7 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %8 = call i32 @inet_addr(ptr @global_var_b45f8)
  %9 = call i16 @htons(i16 27015)
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call i32 @connect(i32 %5, ptr nonnull %10, i32 16)
  %12 = icmp eq i32 %11, -1
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %12, label %dec_label_pc_c25e, label %dec_label_pc_c212

dec_label_pc_c212:                                ; preds = %dec_label_pc_c1bb
  %13 = call i32 @recv(i32 %5, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %14 = add i32 %13, 1
  %15 = icmp ult i32 %14, 2
  store i32 -1, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br i1 %15, label %dec_label_pc_c25e, label %dec_label_pc_c239

dec_label_pc_c239:                                ; preds = %dec_label_pc_c212
  %16 = sext i32 %13 to i64
  %17 = add i64 %0, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-88.0.ph.reg2mem, align 4
  br label %dec_label_pc_c25e

dec_label_pc_c25e:                                ; preds = %dec_label_pc_c1bb, %dec_label_pc_c239, %dec_label_pc_c212
  %stack_var_-88.0.ph.reload = load i32, ptr %stack_var_-88.0.ph.reg2mem, align 4
  %22 = call i32 @close(i32 %5)
  store i32 %stack_var_-88.0.ph.reload, ptr %stack_var_-88.1.reg2mem, align 4
  br label %dec_label_pc_c268

dec_label_pc_c268:                                ; preds = %dec_label_pc_c193, %dec_label_pc_c25e, %dec_label_pc_c162
  %23 = load i32, ptr @global_var_ef014, align 4
  %24 = icmp eq i32 %23, 5
  %25 = icmp eq i1 %24, false
  br i1 %25, label %dec_label_pc_c2e2, label %dec_label_pc_c273

dec_label_pc_c273:                                ; preds = %dec_label_pc_c268
  %stack_var_-88.1.reload = load i32, ptr %stack_var_-88.1.reg2mem, align 4
  store i64 0, ptr %stack_var_-72, align 8
  %26 = icmp slt i32 %stack_var_-88.1.reload, 0
  br i1 %26, label %dec_label_pc_c2d3, label %dec_label_pc_c2a1

dec_label_pc_c2a1:                                ; preds = %dec_label_pc_c273
  %27 = sext i32 %stack_var_-88.1.reload to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %0, -64
  %30 = add i64 %28, %29
  %31 = inttoptr i64 %30 to ptr
  store i32 1, ptr %31, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_c2b7

dec_label_pc_c2b7:                                ; preds = %dec_label_pc_c2b7, %dec_label_pc_c2a1
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %32 = mul i64 %indvars.iv.reload, 4
  %33 = add i64 %32, %29
  %34 = inttoptr i64 %33 to ptr
  %35 = load i32, ptr %34, align 4
  call void @printIntLine(i32 %35)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c2e2, label %dec_label_pc_c2b7

dec_label_pc_c2d3:                                ; preds = %dec_label_pc_c273
  call void @printLine(ptr @global_var_b4608)
  br label %dec_label_pc_c2e2

dec_label_pc_c2e2:                                ; preds = %dec_label_pc_c2b7, %dec_label_pc_c2d3, %dec_label_pc_c268
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %1, %36
  br i1 %37, label %dec_label_pc_c2f7, label %dec_label_pc_c2f2

dec_label_pc_c2f2:                                ; preds = %dec_label_pc_c2e2
  call void @__stack_chk_fail()
  br label %dec_label_pc_c2f7

dec_label_pc_c2f7:                                ; preds = %dec_label_pc_c2f2, %dec_label_pc_c2e2
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

