@global_var_85468 = external constant [10 x i8]
@global_var_85478 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2afe7:
  %stack_var_-72.049.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-72.049.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2b0dc, label %dec_label_pc_2b00f

dec_label_pc_2b00f:                               ; preds = %dec_label_pc_2afe7
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i32 @inet_addr(ptr @global_var_85468)
  %6 = call i16 @htons(i16 27015)
  %7 = call i32 @connect(i32 %1, ptr nonnull %3, i32 16)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_2b0d3.thread10, label %dec_label_pc_2b066

dec_label_pc_2b066:                               ; preds = %dec_label_pc_2b00f
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %dec_label_pc_2b0d3.thread10, label %dec_label_pc_2b0d3

dec_label_pc_2b0d3.thread10:                      ; preds = %dec_label_pc_2b066, %dec_label_pc_2b00f
  %12 = call i32 @close(i32 %1)
  store i32 0, ptr %stack_var_-72.049.reg2mem, align 4
  br label %dec_label_pc_2b0dc

dec_label_pc_2b0d3:                               ; preds = %dec_label_pc_2b066
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = add i64 %13, -22
  %15 = bitcast ptr %stack_var_-30 to ptr
  %16 = sext i32 %9 to i64
  %17 = add i64 %14, %16
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = call i32 @atoi(ptr nonnull %15)
  %20 = call i32 @close(i32 %1)
  %21 = icmp eq i32 %19, 2147483647
  store i32 %19, ptr %stack_var_-72.049.reg2mem, align 4
  br i1 %21, label %dec_label_pc_2b0f2, label %dec_label_pc_2b0dc

dec_label_pc_2b0dc:                               ; preds = %dec_label_pc_2afe7, %dec_label_pc_2b0d3.thread10, %dec_label_pc_2b0d3
  %stack_var_-72.049.reload = load i32, ptr %stack_var_-72.049.reg2mem, align 4
  %22 = add i32 %stack_var_-72.049.reload, 1
  call void @printIntLine(i32 %22)
  br label %dec_label_pc_2b10b

dec_label_pc_2b0f2:                               ; preds = %dec_label_pc_2b0d3
  call void @printLine(ptr @global_var_85478)
  br label %dec_label_pc_2b10b

dec_label_pc_2b10b:                               ; preds = %dec_label_pc_2b0dc, %dec_label_pc_2b0f2
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_2b120, label %dec_label_pc_2b11b

dec_label_pc_2b11b:                               ; preds = %dec_label_pc_2b10b
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b120

dec_label_pc_2b120:                               ; preds = %dec_label_pc_2b11b, %dec_label_pc_2b10b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

