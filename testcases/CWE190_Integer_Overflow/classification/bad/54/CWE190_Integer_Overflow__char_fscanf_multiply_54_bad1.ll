@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_6ce4e = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12acc:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6ce4e)
  call void @anon1(i8 32)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_12b30, label %dec_label_pc_12b2b

dec_label_pc_12b2b:                               ; preds = %dec_label_pc_12acc
  call void @__stack_chk_fail()
  br label %dec_label_pc_12b30

dec_label_pc_12b30:                               ; preds = %dec_label_pc_12b2b, %dec_label_pc_12acc
  ret void
}

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_12bd9:
  call void @anon2(i8 %data)
  ret void
}

define void @anon2(i8 %data) local_unnamed_addr {
dec_label_pc_12c36:
  call void @anon3(i8 %data)
  ret void
}

define void @anon3(i8 %data) local_unnamed_addr {
dec_label_pc_12c93:
  call void @anon4(i8 %data)
  ret void
}

define void @anon4(i8 %data) local_unnamed_addr {
dec_label_pc_12cf0:
  %0 = icmp slt i8 %data, 1
  br i1 %0, label %dec_label_pc_12d1b, label %dec_label_pc_12d07

dec_label_pc_12d07:                               ; preds = %dec_label_pc_12cf0
  %1 = mul i8 %data, 2
  call void @printHexCharLine(i8 %1)
  br label %dec_label_pc_12d1b

dec_label_pc_12d1b:                               ; preds = %dec_label_pc_12d07, %dec_label_pc_12cf0
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

