@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1bb49:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 127, ptr %stack_var_-17, align 1
  call void @anon1(ptr nonnull %stack_var_-17)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_1bb8d, label %dec_label_pc_1bb88

dec_label_pc_1bb88:                               ; preds = %dec_label_pc_1bb49
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bb8d

dec_label_pc_1bb8d:                               ; preds = %dec_label_pc_1bb88, %dec_label_pc_1bb49
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1bc3a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = add i8 %2, 1
  call void @printHexCharLine(i8 %3)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

