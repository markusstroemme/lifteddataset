@global_var_723c0 = external constant [4 x i8]
@global_var_723e0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.595() local_unnamed_addr {
dec_label_pc_1fc03:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1fd75:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.595()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1fdc6, label %dec_label_pc_1fda4

dec_label_pc_1fda4:                               ; preds = %dec_label_pc_1fd75
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_723c0, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_1fdc6

dec_label_pc_1fdc6:                               ; preds = %dec_label_pc_1fda4, %dec_label_pc_1fd75
  %5 = call i32 @staticReturnsTrue.595()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_1fe0d, label %dec_label_pc_1fddd

dec_label_pc_1fddd:                               ; preds = %dec_label_pc_1fdc6
  %9 = icmp sgt i16 %7, 16382
  br i1 %9, label %dec_label_pc_1fdfe, label %dec_label_pc_1fde7

dec_label_pc_1fde7:                               ; preds = %dec_label_pc_1fddd
  %10 = mul i16 %7, 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_1fe0d

dec_label_pc_1fdfe:                               ; preds = %dec_label_pc_1fddd
  call void @printLine(ptr @global_var_723e0)
  br label %dec_label_pc_1fe0d

dec_label_pc_1fe0d:                               ; preds = %dec_label_pc_1fdfe, %dec_label_pc_1fde7, %dec_label_pc_1fdc6
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1fe22, label %dec_label_pc_1fe1d

dec_label_pc_1fe1d:                               ; preds = %dec_label_pc_1fe0d
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fe22

dec_label_pc_1fe22:                               ; preds = %dec_label_pc_1fe1d, %dec_label_pc_1fe0d
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

