@global_var_72880 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_22162:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_22190, label %dec_label_pc_2217b

dec_label_pc_2217b:                               ; preds = %dec_label_pc_22162
  %1 = mul i16 %data, 2
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_22190

dec_label_pc_22190:                               ; preds = %dec_label_pc_2217b, %dec_label_pc_22162
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_22193:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72880, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon1(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_221f7, label %dec_label_pc_221f2

dec_label_pc_221f2:                               ; preds = %dec_label_pc_22193
  call void @__stack_chk_fail()
  br label %dec_label_pc_221f7

dec_label_pc_221f7:                               ; preds = %dec_label_pc_221f2, %dec_label_pc_22193
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

