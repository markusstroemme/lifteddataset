@global_var_8c81c = external constant [4 x i8]
@global_var_bc3f0 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_551dd:
  %0 = load i32, ptr @global_var_bc3f0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_55217, label %dec_label_pc_551f9

dec_label_pc_551f9:                               ; preds = %dec_label_pc_551dd
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_55217

dec_label_pc_55217:                               ; preds = %dec_label_pc_551f9, %dec_label_pc_551dd
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5521a:
  store i32 1, ptr @global_var_bc3f0, align 4
  call void @anon0(i16 2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

