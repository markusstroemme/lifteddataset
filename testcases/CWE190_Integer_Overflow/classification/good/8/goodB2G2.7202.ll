@global_var_72e60 = external constant [4 x i8]
@global_var_72e80 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.717() local_unnamed_addr {
dec_label_pc_25016:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2518c:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.717()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_251dd, label %dec_label_pc_251bb

dec_label_pc_251bb:                               ; preds = %dec_label_pc_2518c
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72e60, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_251dd

dec_label_pc_251dd:                               ; preds = %dec_label_pc_251bb, %dec_label_pc_2518c
  %5 = call i32 @staticReturnsTrue.717()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_2522a, label %dec_label_pc_251eb

dec_label_pc_251eb:                               ; preds = %dec_label_pc_251dd
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = sub i16 0, %7
  %9 = icmp slt i16 %8, 0
  %10 = icmp eq i1 %9, false
  %.v = select i1 %10, i16 %8, i16 %7
  %11 = icmp ult i16 %.v, 182
  br i1 %11, label %dec_label_pc_251fd, label %dec_label_pc_2521b

dec_label_pc_251fd:                               ; preds = %dec_label_pc_251eb
  %12 = mul i16 %7, %7
  %13 = sext i16 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_2522a

dec_label_pc_2521b:                               ; preds = %dec_label_pc_251eb
  call void @printLine(ptr @global_var_72e80)
  br label %dec_label_pc_2522a

dec_label_pc_2522a:                               ; preds = %dec_label_pc_2521b, %dec_label_pc_251fd, %dec_label_pc_251dd
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_2523f, label %dec_label_pc_2523a

dec_label_pc_2523a:                               ; preds = %dec_label_pc_2522a
  call void @__stack_chk_fail()
  br label %dec_label_pc_2523f

dec_label_pc_2523f:                               ; preds = %dec_label_pc_2523a, %dec_label_pc_2522a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

