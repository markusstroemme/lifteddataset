@global_var_b8380 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3e320:
  %stack_var_-72.036.reg2mem = alloca i64, align 8
  %stack_var_-72.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3e45a, label %dec_label_pc_3e371

dec_label_pc_3e371:                               ; preds = %dec_label_pc_3e320
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3e44a.thread7, label %dec_label_pc_3e3bd

dec_label_pc_3e3bd:                               ; preds = %dec_label_pc_3e371
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3e44a.thread7, label %dec_label_pc_3e3d1

dec_label_pc_3e3d1:                               ; preds = %dec_label_pc_3e3bd
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3e44a.thread7, label %dec_label_pc_3e3ee

dec_label_pc_3e3ee:                               ; preds = %dec_label_pc_3e3d1
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i64 4294967295, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_3e450, label %dec_label_pc_3e415

dec_label_pc_3e415:                               ; preds = %dec_label_pc_3e3ee
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %phitmp = zext i32 %21 to i64
  store i64 %phitmp, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br label %dec_label_pc_3e450

dec_label_pc_3e44a.thread7:                       ; preds = %dec_label_pc_3e3d1, %dec_label_pc_3e3bd, %dec_label_pc_3e371
  %22 = call i32 @close(i32 %1)
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_3e45a

dec_label_pc_3e450:                               ; preds = %dec_label_pc_3e415, %dec_label_pc_3e3ee
  %stack_var_-72.0.ph.reload = load i64, ptr %stack_var_-72.0.ph.reg2mem, align 8
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i64 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_3e45a

dec_label_pc_3e45a:                               ; preds = %dec_label_pc_3e320, %dec_label_pc_3e44a.thread7, %dec_label_pc_3e450
  %stack_var_-72.036.reload = load i64, ptr %stack_var_-72.036.reg2mem, align 8
  call void @anon1(i64 %stack_var_-72.036.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_3e47f, label %dec_label_pc_3e47a

dec_label_pc_3e47a:                               ; preds = %dec_label_pc_3e45a
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e47f

dec_label_pc_3e47f:                               ; preds = %dec_label_pc_3e47a, %dec_label_pc_3e45a
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3e62e:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = trunc i64 %myStruct to i32
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %dec_label_pc_3e6b2, label %dec_label_pc_3e680

dec_label_pc_3e680:                               ; preds = %dec_label_pc_3e62e
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %myStruct, 4294967296
  %4 = ashr exact i64 %sext, 30
  %5 = add i64 %3, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3e696

dec_label_pc_3e696:                               ; preds = %dec_label_pc_3e696, %dec_label_pc_3e680
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3e6c1, label %dec_label_pc_3e696

dec_label_pc_3e6b2:                               ; preds = %dec_label_pc_3e62e
  call void @printLine(ptr @global_var_b8380)
  br label %dec_label_pc_3e6c1

dec_label_pc_3e6c1:                               ; preds = %dec_label_pc_3e696, %dec_label_pc_3e6b2
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_3e6d6, label %dec_label_pc_3e6d1

dec_label_pc_3e6d1:                               ; preds = %dec_label_pc_3e6c1
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e6d6

dec_label_pc_3e6d6:                               ; preds = %dec_label_pc_3e6d1, %dec_label_pc_3e6c1
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

