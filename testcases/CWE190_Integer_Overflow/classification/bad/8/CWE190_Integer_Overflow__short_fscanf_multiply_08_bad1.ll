@global_var_723c0 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.595() local_unnamed_addr {
dec_label_pc_1fc03:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1fc21:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.595()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1fc72, label %dec_label_pc_1fc50

dec_label_pc_1fc50:                               ; preds = %dec_label_pc_1fc21
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_723c0, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_1fc72

dec_label_pc_1fc72:                               ; preds = %dec_label_pc_1fc50, %dec_label_pc_1fc21
  %5 = call i32 @staticReturnsTrue.595()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_1fc9e, label %dec_label_pc_1fc89

dec_label_pc_1fc89:                               ; preds = %dec_label_pc_1fc72
  %9 = mul i16 %7, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1fc9e

dec_label_pc_1fc9e:                               ; preds = %dec_label_pc_1fc89, %dec_label_pc_1fc72
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1fcb3, label %dec_label_pc_1fcae

dec_label_pc_1fcae:                               ; preds = %dec_label_pc_1fc9e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fcb3

dec_label_pc_1fcb3:                               ; preds = %dec_label_pc_1fcae, %dec_label_pc_1fc9e
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

