@global_var_76cf3 = external constant [6 x i8]
@global_var_a516c = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_21b69:
  %0 = load i32, ptr @global_var_a516c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_21b9d, label %dec_label_pc_21b84

dec_label_pc_21b84:                               ; preds = %dec_label_pc_21b69
  %2 = mul i8 %data, %data
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_21b9d

dec_label_pc_21b9d:                               ; preds = %dec_label_pc_21b84, %dec_label_pc_21b69
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_21ba0:
  store i32 1, ptr @global_var_a516c, align 4
  call void @anon1(i8 127)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

