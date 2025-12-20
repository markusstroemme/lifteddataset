@global_var_4a578 = external constant [4 x i8]

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_115dd:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_115fd:
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 5, ptr %stack_var_-28, align 4
  call void @anon0(ptr nonnull %stack_var_-28)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_11648, label %dec_label_pc_11643

dec_label_pc_11643:                               ; preds = %dec_label_pc_115fd
  call void @__stack_chk_fail()
  br label %dec_label_pc_11648

dec_label_pc_11648:                               ; preds = %dec_label_pc_11643, %dec_label_pc_115fd
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

