@global_var_8eae8 = external constant [10 x i8]
@global_var_8eb08 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3df0d:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_3e04e, label %dec_label_pc_3df65

dec_label_pc_3df65:                               ; preds = %dec_label_pc_3df0d
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_8eae8)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_3e01c.thread5, label %dec_label_pc_3dfbc

dec_label_pc_3dfbc:                               ; preds = %dec_label_pc_3df65
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %dec_label_pc_3e01c.thread5, label %dec_label_pc_3e01c

dec_label_pc_3e01c.thread5:                       ; preds = %dec_label_pc_3dfbc, %dec_label_pc_3df65
  %12 = call i32 @close(i32 %1)
  br label %dec_label_pc_3e04e

dec_label_pc_3e01c:                               ; preds = %dec_label_pc_3dfbc
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %9 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  %20 = call i32 @close(i32 %1)
  %21 = icmp slt i32 %19, 1
  br i1 %21, label %dec_label_pc_3e04e, label %dec_label_pc_3e022

dec_label_pc_3e022:                               ; preds = %dec_label_pc_3e01c
  %22 = icmp sgt i32 %19, 1073741822
  br i1 %22, label %dec_label_pc_3e03f, label %dec_label_pc_3e02b

dec_label_pc_3e02b:                               ; preds = %dec_label_pc_3e022
  %23 = mul i32 %19, 2
  call void @printIntLine(i32 %23)
  br label %dec_label_pc_3e04e

dec_label_pc_3e03f:                               ; preds = %dec_label_pc_3e022
  call void @printLine(ptr @global_var_8eb08)
  br label %dec_label_pc_3e04e

dec_label_pc_3e04e:                               ; preds = %dec_label_pc_3df0d, %dec_label_pc_3e01c.thread5, %dec_label_pc_3e03f, %dec_label_pc_3e02b, %dec_label_pc_3e01c
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_3e063, label %dec_label_pc_3e05e

dec_label_pc_3e05e:                               ; preds = %dec_label_pc_3e04e
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e063

dec_label_pc_3e063:                               ; preds = %dec_label_pc_3e05e, %dec_label_pc_3e04e
  ret void
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

