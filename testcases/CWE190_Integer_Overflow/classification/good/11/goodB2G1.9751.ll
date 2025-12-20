@global_var_85b40 = external constant [21 x i8]
@global_var_85b58 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3dcf4:
  %stack_var_-76.1.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3de40, label %dec_label_pc_3dd28

dec_label_pc_3dd28:                               ; preds = %dec_label_pc_3dcf4
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_3de40, label %dec_label_pc_3dd57

dec_label_pc_3dd57:                               ; preds = %dec_label_pc_3dd28
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 27015)
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3de30.thread10, label %dec_label_pc_3dda3

dec_label_pc_3dda3:                               ; preds = %dec_label_pc_3dd57
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3de30.thread10, label %dec_label_pc_3ddb7

dec_label_pc_3ddb7:                               ; preds = %dec_label_pc_3dda3
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_3de30.thread10, label %dec_label_pc_3ddd4

dec_label_pc_3ddd4:                               ; preds = %dec_label_pc_3ddb7
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_3de36, label %dec_label_pc_3ddfb

dec_label_pc_3ddfb:                               ; preds = %dec_label_pc_3ddd4
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3de36

dec_label_pc_3de30.thread10:                      ; preds = %dec_label_pc_3ddb7, %dec_label_pc_3dda3, %dec_label_pc_3dd57
  %24 = call i32 @close(i32 %3)
  store i32 0, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3de40

dec_label_pc_3de36:                               ; preds = %dec_label_pc_3ddfb, %dec_label_pc_3ddd4
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.1.reg2mem, align 4
  br label %dec_label_pc_3de40

dec_label_pc_3de40:                               ; preds = %dec_label_pc_3dd28, %dec_label_pc_3de30.thread10, %dec_label_pc_3de36, %dec_label_pc_3dcf4
  %27 = call i32 @globalReturnsFalse()
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %dec_label_pc_3de5f, label %dec_label_pc_3de4e

dec_label_pc_3de4e:                               ; preds = %dec_label_pc_3de40
  call void @printLine(ptr @global_var_85b40)
  br label %dec_label_pc_3de9f

dec_label_pc_3de5f:                               ; preds = %dec_label_pc_3de40
  %stack_var_-76.1.reload = load i32, ptr %stack_var_-76.1.reg2mem, align 4
  %stack_var_-76.1.off = add i32 %stack_var_-76.1.reload, 46339
  %29 = icmp ugt i32 %stack_var_-76.1.off, 92678
  br i1 %29, label %dec_label_pc_3de90, label %dec_label_pc_3de7a

dec_label_pc_3de7a:                               ; preds = %dec_label_pc_3de5f
  %30 = mul i32 %stack_var_-76.1.reload, %stack_var_-76.1.reload
  call void @printIntLine(i32 %30)
  br label %dec_label_pc_3de9f

dec_label_pc_3de90:                               ; preds = %dec_label_pc_3de5f
  call void @printLine(ptr @global_var_85b58)
  br label %dec_label_pc_3de9f

dec_label_pc_3de9f:                               ; preds = %dec_label_pc_3de90, %dec_label_pc_3de7a, %dec_label_pc_3de4e
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_3deb4, label %dec_label_pc_3deaf

dec_label_pc_3deaf:                               ; preds = %dec_label_pc_3de9f
  call void @__stack_chk_fail()
  br label %dec_label_pc_3deb4

dec_label_pc_3deb4:                               ; preds = %dec_label_pc_3deaf, %dec_label_pc_3de9f
  ret void
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6ec9b:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6ecaa:
  ret i32 0
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

