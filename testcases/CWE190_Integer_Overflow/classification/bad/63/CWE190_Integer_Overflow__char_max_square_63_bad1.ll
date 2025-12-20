@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2303d:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 127, ptr %stack_var_-17, align 1
  call void @anon1(ptr nonnull %stack_var_-17)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_23081, label %dec_label_pc_2307c

dec_label_pc_2307c:                               ; preds = %dec_label_pc_2303d
  call void @__stack_chk_fail()
  br label %dec_label_pc_23081

dec_label_pc_23081:                               ; preds = %dec_label_pc_2307c, %dec_label_pc_2303d
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2312e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = mul i8 %2, %2
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

