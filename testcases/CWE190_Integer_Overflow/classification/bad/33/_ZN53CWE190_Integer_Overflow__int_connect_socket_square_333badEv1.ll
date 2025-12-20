@global_var_946b0 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_72242:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  store i32 0, ptr %.reg2mem3, align 4
  br i1 %cond, label %dec_label_pc_72346, label %dec_label_pc_72294

dec_label_pc_72294:                               ; preds = %dec_label_pc_72242
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_946b0)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  store i32 0, ptr %.reg2mem, align 4
  br i1 %9, label %dec_label_pc_7233c, label %dec_label_pc_722f0

dec_label_pc_722f0:                               ; preds = %dec_label_pc_72294
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  store i32 0, ptr %.reg2mem, align 4
  br i1 %12, label %dec_label_pc_7233c, label %dec_label_pc_72317

dec_label_pc_72317:                               ; preds = %dec_label_pc_722f0
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %.reg2mem, align 4
  br label %dec_label_pc_7233c

dec_label_pc_7233c:                               ; preds = %dec_label_pc_722f0, %dec_label_pc_72317, %dec_label_pc_72294
  %.reload = load i32, ptr %.reg2mem, align 4
  %20 = call i32 @close(i32 %1)
  store i32 %.reload, ptr %.reg2mem3, align 4
  br label %dec_label_pc_72346

dec_label_pc_72346:                               ; preds = %dec_label_pc_72242, %dec_label_pc_7233c
  %.reload4 = load i32, ptr %.reg2mem3, align 4
  %21 = mul i32 %.reload4, %.reload4
  call void @printIntLine(i32 %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_72377, label %dec_label_pc_72372

dec_label_pc_72372:                               ; preds = %dec_label_pc_72346
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_72377

dec_label_pc_72377:                               ; preds = %dec_label_pc_72372, %dec_label_pc_72346
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
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

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

