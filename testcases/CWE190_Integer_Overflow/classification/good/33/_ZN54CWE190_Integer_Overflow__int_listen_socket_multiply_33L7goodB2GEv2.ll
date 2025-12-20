@global_var_8a528 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6293c:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_62ac3, label %dec_label_pc_62995

dec_label_pc_62995:                               ; preds = %dec_label_pc_6293c
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_62a78.thread5, label %dec_label_pc_629e6

dec_label_pc_629e6:                               ; preds = %dec_label_pc_62995
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_62a78.thread5, label %dec_label_pc_629ff

dec_label_pc_629ff:                               ; preds = %dec_label_pc_629e6
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_62a78.thread5, label %dec_label_pc_62a1c

dec_label_pc_62a1c:                               ; preds = %dec_label_pc_629ff
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 0, ptr %.reg2mem, align 4
  br i1 %18, label %dec_label_pc_62a88, label %dec_label_pc_62a43

dec_label_pc_62a43:                               ; preds = %dec_label_pc_62a1c
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %.reg2mem, align 4
  br label %dec_label_pc_62a88

dec_label_pc_62a78.thread5:                       ; preds = %dec_label_pc_629ff, %dec_label_pc_629e6, %dec_label_pc_62995
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_62ac3

dec_label_pc_62a88:                               ; preds = %dec_label_pc_62a1c, %dec_label_pc_62a43
  %.reload = load i32, ptr %.reg2mem, align 4
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  %29 = icmp slt i32 %.reload, 1
  br i1 %29, label %dec_label_pc_62ac3, label %dec_label_pc_62a97

dec_label_pc_62a97:                               ; preds = %dec_label_pc_62a88
  %30 = icmp sgt i32 %.reload, 1073741822
  br i1 %30, label %dec_label_pc_62ab4, label %dec_label_pc_62aa0

dec_label_pc_62aa0:                               ; preds = %dec_label_pc_62a97
  %31 = mul i32 %.reload, 2
  call void @printIntLine(i32 %31)
  br label %dec_label_pc_62ac3

dec_label_pc_62ab4:                               ; preds = %dec_label_pc_62a97
  call void @printLine(ptr @global_var_8a528)
  br label %dec_label_pc_62ac3

dec_label_pc_62ac3:                               ; preds = %dec_label_pc_62a78.thread5, %dec_label_pc_6293c, %dec_label_pc_62ab4, %dec_label_pc_62aa0, %dec_label_pc_62a88
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %33, label %dec_label_pc_62ad8, label %dec_label_pc_62ad3

dec_label_pc_62ad3:                               ; preds = %dec_label_pc_62ac3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_62ad8

dec_label_pc_62ad8:                               ; preds = %dec_label_pc_62ad3, %dec_label_pc_62ac3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
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

