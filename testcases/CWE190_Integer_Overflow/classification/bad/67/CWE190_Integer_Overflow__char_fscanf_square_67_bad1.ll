@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_6da16 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1892b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6da16)
  call void @anon1(i64 32)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_18993, label %dec_label_pc_1898e

dec_label_pc_1898e:                               ; preds = %dec_label_pc_1892b
  call void @__stack_chk_fail()
  br label %dec_label_pc_18993

dec_label_pc_18993:                               ; preds = %dec_label_pc_1898e, %dec_label_pc_1892b
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_18a47:
  %0 = urem i64 %myStruct, 256
  %1 = mul nuw nsw i64 %0, %0
  %2 = trunc i64 %1 to i8
  call void @printHexCharLine(i8 %2)
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

