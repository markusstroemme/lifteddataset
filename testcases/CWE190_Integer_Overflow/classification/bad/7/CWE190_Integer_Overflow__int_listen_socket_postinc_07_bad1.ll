@global_var_8ca7c = external constant [4 x i8]
@global_var_bc05c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3c513:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_bc05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_3c65c, label %dec_label_pc_3c544

dec_label_pc_3c544:                               ; preds = %dec_label_pc_3c513
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_3c65c, label %dec_label_pc_3c573

dec_label_pc_3c573:                               ; preds = %dec_label_pc_3c544
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_3c64c.thread6, label %dec_label_pc_3c5bf

dec_label_pc_3c5bf:                               ; preds = %dec_label_pc_3c573
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_3c64c.thread6, label %dec_label_pc_3c5d3

dec_label_pc_3c5d3:                               ; preds = %dec_label_pc_3c5bf
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_3c64c.thread6, label %dec_label_pc_3c5f0

dec_label_pc_3c5f0:                               ; preds = %dec_label_pc_3c5d3
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_3c652, label %dec_label_pc_3c617

dec_label_pc_3c617:                               ; preds = %dec_label_pc_3c5f0
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3c652

dec_label_pc_3c64c.thread6:                       ; preds = %dec_label_pc_3c5d3, %dec_label_pc_3c5bf, %dec_label_pc_3c573
  %25 = call i32 @close(i32 %4)
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3c65c

dec_label_pc_3c652:                               ; preds = %dec_label_pc_3c617, %dec_label_pc_3c5f0
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  %27 = call i32 @close(i32 %13)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3c65c

dec_label_pc_3c65c:                               ; preds = %dec_label_pc_3c544, %dec_label_pc_3c64c.thread6, %dec_label_pc_3c652, %dec_label_pc_3c513
  %28 = load i32, ptr @global_var_bc05c, align 4
  %29 = icmp eq i32 %28, 5
  %30 = icmp eq i1 %29, false
  br i1 %30, label %dec_label_pc_3c67b, label %dec_label_pc_3c667

dec_label_pc_3c667:                               ; preds = %dec_label_pc_3c65c
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %31 = add i32 %stack_var_-76.1.reload, 1
  call void @printIntLine(i32 %31)
  br label %dec_label_pc_3c67b

dec_label_pc_3c67b:                               ; preds = %dec_label_pc_3c667, %dec_label_pc_3c65c
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  br i1 %33, label %dec_label_pc_3c690, label %dec_label_pc_3c68b

dec_label_pc_3c68b:                               ; preds = %dec_label_pc_3c67b
  call void @__stack_chk_fail()
  br label %dec_label_pc_3c690

dec_label_pc_3c690:                               ; preds = %dec_label_pc_3c68b, %dec_label_pc_3c67b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

