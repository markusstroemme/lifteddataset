@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_86135:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_86279, label %dec_label_pc_86186

dec_label_pc_86186:                               ; preds = %dec_label_pc_86135
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_86269.thread4, label %dec_label_pc_861d7

dec_label_pc_861d7:                               ; preds = %dec_label_pc_86186
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_86269.thread4, label %dec_label_pc_861f0

dec_label_pc_861f0:                               ; preds = %dec_label_pc_861d7
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_86269.thread4, label %dec_label_pc_8620d

dec_label_pc_8620d:                               ; preds = %dec_label_pc_861f0
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_8626f, label %dec_label_pc_86234

dec_label_pc_86234:                               ; preds = %dec_label_pc_8620d
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  br label %dec_label_pc_8626f

dec_label_pc_86269.thread4:                       ; preds = %dec_label_pc_861f0, %dec_label_pc_861d7, %dec_label_pc_86186
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_86279

dec_label_pc_8626f:                               ; preds = %dec_label_pc_86234, %dec_label_pc_8620d
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  br label %dec_label_pc_86279

dec_label_pc_86279:                               ; preds = %dec_label_pc_86135, %dec_label_pc_86269.thread4, %dec_label_pc_8626f
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_862b9, label %dec_label_pc_862b4

dec_label_pc_862b4:                               ; preds = %dec_label_pc_86279
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_862b9

dec_label_pc_862b9:                               ; preds = %dec_label_pc_862b4, %dec_label_pc_86279
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

