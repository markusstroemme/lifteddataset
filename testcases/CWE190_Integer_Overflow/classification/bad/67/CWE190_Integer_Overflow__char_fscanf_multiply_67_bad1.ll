@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_6cfc6 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_136be:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6cfc6)
  call void @anon1(i64 32)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_13726, label %dec_label_pc_13721

dec_label_pc_13721:                               ; preds = %dec_label_pc_136be
  call void @__stack_chk_fail()
  br label %dec_label_pc_13726

dec_label_pc_13726:                               ; preds = %dec_label_pc_13721, %dec_label_pc_136be
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_137da:
  %0 = trunc i64 %myStruct to i8
  %1 = icmp slt i8 %0, 1
  br i1 %1, label %dec_label_pc_1380b, label %dec_label_pc_137f7

dec_label_pc_137f7:                               ; preds = %dec_label_pc_137da
  %2 = mul i8 %0, 2
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_1380b

dec_label_pc_1380b:                               ; preds = %dec_label_pc_137f7, %dec_label_pc_137da
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

