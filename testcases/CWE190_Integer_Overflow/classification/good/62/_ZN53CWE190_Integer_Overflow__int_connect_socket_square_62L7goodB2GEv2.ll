@global_var_94740 = external constant [54 x i8]
@global_var_94776 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_729a1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %dec_label_pc_72a05, label %dec_label_pc_729d9

dec_label_pc_729d9:                               ; preds = %dec_label_pc_729a1
  %4 = sub i32 0, %2
  %5 = icmp slt i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = select i1 %6, i32 %4, i32 %2
  %8 = icmp sgt i32 %7, 46339
  br i1 %8, label %dec_label_pc_72a05, label %dec_label_pc_729ed

dec_label_pc_729ed:                               ; preds = %dec_label_pc_729d9
  %9 = mul i32 %2, %2
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_72a14

dec_label_pc_72a05:                               ; preds = %dec_label_pc_729d9, %dec_label_pc_729a1
  call void @printLine(ptr @global_var_94740)
  br label %dec_label_pc_72a14

dec_label_pc_72a14:                               ; preds = %dec_label_pc_72a05, %dec_label_pc_729ed
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_72a29, label %dec_label_pc_72a24

dec_label_pc_72a24:                               ; preds = %dec_label_pc_72a14
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_72a29

dec_label_pc_72a29:                               ; preds = %dec_label_pc_72a24, %dec_label_pc_72a14
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_72b6c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_72c68, label %dec_label_pc_72bb3

dec_label_pc_72bb3:                               ; preds = %dec_label_pc_72b6c
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_94776)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_72c5e, label %dec_label_pc_72c0f

dec_label_pc_72c0f:                               ; preds = %dec_label_pc_72bb3
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_72c5e, label %dec_label_pc_72c36

dec_label_pc_72c36:                               ; preds = %dec_label_pc_72c0f
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %arg1, align 4
  br label %dec_label_pc_72c5e

dec_label_pc_72c5e:                               ; preds = %dec_label_pc_72c0f, %dec_label_pc_72c36, %dec_label_pc_72bb3
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_72c68

dec_label_pc_72c68:                               ; preds = %dec_label_pc_72b6c, %dec_label_pc_72c5e
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_72c7d, label %dec_label_pc_72c78

dec_label_pc_72c78:                               ; preds = %dec_label_pc_72c68
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_72c7d

dec_label_pc_72c7d:                               ; preds = %dec_label_pc_72c78, %dec_label_pc_72c68
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

