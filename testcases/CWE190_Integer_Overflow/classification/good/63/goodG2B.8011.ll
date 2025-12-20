@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_28825:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 2, ptr %stack_var_-18, align 2
  call void @anon0(ptr nonnull %stack_var_-18)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_2886d, label %dec_label_pc_28868

dec_label_pc_28868:                               ; preds = %dec_label_pc_28825
  call void @__stack_chk_fail()
  br label %dec_label_pc_2886d

dec_label_pc_2886d:                               ; preds = %dec_label_pc_28868, %dec_label_pc_28825
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2892c:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = mul i16 %2, %2
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
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

declare i64 @__readfsqword(i64) local_unnamed_addr

