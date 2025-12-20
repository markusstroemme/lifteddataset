@global_var_76cf3 = external constant [6 x i8]
@global_var_a5140 = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1e089:
  %0 = load i32, ptr @global_var_a5140, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i8 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_1e0be, label %dec_label_pc_1e0aa

dec_label_pc_1e0aa:                               ; preds = %dec_label_pc_1e089
  %3 = mul i8 %data, 2
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_1e0be

dec_label_pc_1e0be:                               ; preds = %dec_label_pc_1e0aa, %dec_label_pc_1e089
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1e0c1:
  store i32 1, ptr @global_var_a5140, align 4
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

