@global_var_73656 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_28fd7:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73656, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = zext i16 %3 to i64
  call void @anon1(i64 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_29042, label %dec_label_pc_2903d

dec_label_pc_2903d:                               ; preds = %dec_label_pc_28fd7
  call void @__stack_chk_fail()
  br label %dec_label_pc_29042

dec_label_pc_29042:                               ; preds = %dec_label_pc_2903d, %dec_label_pc_28fd7
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_290fe:
  %0 = urem i64 %myStruct, 65536
  %1 = mul nuw nsw i64 %0, %0
  %2 = trunc i64 %1 to i32
  %sext = mul i32 %2, 65536
  %3 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %3)
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

