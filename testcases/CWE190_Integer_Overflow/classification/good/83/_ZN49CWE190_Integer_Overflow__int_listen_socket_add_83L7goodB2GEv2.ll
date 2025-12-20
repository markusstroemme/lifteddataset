@global_var_8a4b8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_61f1e:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  %2 = call i32 @socket(i32 2, i32 1, i32 6)
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_6206e, label %dec_label_pc_61f78

dec_label_pc_61f78:                               ; preds = %dec_label_pc_61f1e
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @bind(i32 %2, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_6205e.thread4, label %dec_label_pc_61fc9

dec_label_pc_61fc9:                               ; preds = %dec_label_pc_61f78
  %11 = call i32 @listen(i32 %2, i32 5)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  br i1 %14, label %dec_label_pc_6205e.thread4, label %dec_label_pc_61fe2

dec_label_pc_61fe2:                               ; preds = %dec_label_pc_61fc9
  %15 = call i32 @accept(i32 %2, ptr null, ptr null)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %dec_label_pc_6205e.thread4, label %dec_label_pc_61fff

dec_label_pc_61fff:                               ; preds = %dec_label_pc_61fe2
  %17 = call i32 @recv(i32 %15, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %dec_label_pc_62064, label %dec_label_pc_62026

dec_label_pc_62026:                               ; preds = %dec_label_pc_61fff
  %20 = ptrtoint ptr %stack_var_-8 to i64
  %21 = sext i32 %17 to i64
  %22 = add i64 %20, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %1, align 4
  br label %dec_label_pc_62064

dec_label_pc_6205e.thread4:                       ; preds = %dec_label_pc_61fe2, %dec_label_pc_61fc9, %dec_label_pc_61f78
  %27 = call i32 @close(i32 %2)
  br label %dec_label_pc_6206e

dec_label_pc_62064:                               ; preds = %dec_label_pc_62026, %dec_label_pc_61fff
  %28 = call i32 @close(i32 %2)
  %29 = call i32 @close(i32 %15)
  br label %dec_label_pc_6206e

dec_label_pc_6206e:                               ; preds = %dec_label_pc_61f1e, %dec_label_pc_6205e.thread4, %dec_label_pc_62064
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  br i1 %31, label %dec_label_pc_62083, label %dec_label_pc_6207e

dec_label_pc_6207e:                               ; preds = %dec_label_pc_6206e
  call void @__stack_chk_fail()
  br label %dec_label_pc_62083

dec_label_pc_62083:                               ; preds = %dec_label_pc_6207e, %dec_label_pc_6206e
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_62086:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_620bb, label %dec_label_pc_620a3

dec_label_pc_620a3:                               ; preds = %dec_label_pc_62086
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_620ca

dec_label_pc_620bb:                               ; preds = %dec_label_pc_62086
  call void @printLine(ptr @global_var_8a4b8)
  br label %dec_label_pc_620ca

dec_label_pc_620ca:                               ; preds = %dec_label_pc_620bb, %dec_label_pc_620a3
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_621c7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 0)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6221a, label %dec_label_pc_62215

dec_label_pc_62215:                               ; preds = %dec_label_pc_621c7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6221a

dec_label_pc_6221a:                               ; preds = %dec_label_pc_62215, %dec_label_pc_621c7
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

