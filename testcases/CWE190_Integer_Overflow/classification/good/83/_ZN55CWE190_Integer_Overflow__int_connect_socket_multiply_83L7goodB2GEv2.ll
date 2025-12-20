@global_var_94618 = external constant [10 x i8]
@global_var_94628 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_71ac0:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  %2 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %2, -1
  br i1 %cond, label %dec_label_pc_71bc8, label %dec_label_pc_71b13

dec_label_pc_71b13:                               ; preds = %dec_label_pc_71ac0
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_94618)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %2, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_71bbe, label %dec_label_pc_71b6f

dec_label_pc_71b6f:                               ; preds = %dec_label_pc_71b13
  %11 = call i32 @recv(i32 %2, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %dec_label_pc_71bbe, label %dec_label_pc_71b96

dec_label_pc_71b96:                               ; preds = %dec_label_pc_71b6f
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %1, align 4
  br label %dec_label_pc_71bbe

dec_label_pc_71bbe:                               ; preds = %dec_label_pc_71b6f, %dec_label_pc_71b96, %dec_label_pc_71b13
  %21 = call i32 @close(i32 %2)
  br label %dec_label_pc_71bc8

dec_label_pc_71bc8:                               ; preds = %dec_label_pc_71ac0, %dec_label_pc_71bbe
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_71bdd, label %dec_label_pc_71bd8

dec_label_pc_71bd8:                               ; preds = %dec_label_pc_71bc8
  call void @__stack_chk_fail()
  br label %dec_label_pc_71bdd

dec_label_pc_71bdd:                               ; preds = %dec_label_pc_71bd8, %dec_label_pc_71bc8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_71be0:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_71c2d, label %dec_label_pc_71bfa

dec_label_pc_71bfa:                               ; preds = %dec_label_pc_71be0
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_71c1e, label %dec_label_pc_71c07

dec_label_pc_71c07:                               ; preds = %dec_label_pc_71bfa
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_71c2d

dec_label_pc_71c1e:                               ; preds = %dec_label_pc_71bfa
  call void @printLine(ptr @global_var_94628)
  br label %dec_label_pc_71c2d

dec_label_pc_71c2d:                               ; preds = %dec_label_pc_71c1e, %dec_label_pc_71c07, %dec_label_pc_71be0
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_71d32:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_71d85, label %dec_label_pc_71d80

dec_label_pc_71d80:                               ; preds = %dec_label_pc_71d32
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_71d85

dec_label_pc_71d85:                               ; preds = %dec_label_pc_71d80, %dec_label_pc_71d32
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

