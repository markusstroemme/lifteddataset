@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_8384e = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1ec63:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8384e)
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1ecc6, label %dec_label_pc_1ecc1

dec_label_pc_1ecc1:                               ; preds = %dec_label_pc_1ec63
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ecc6

dec_label_pc_1ecc6:                               ; preds = %dec_label_pc_1ecc1, %dec_label_pc_1ec63
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1ed73:
  %0 = icmp slt i32 %data, 1
  br i1 %0, label %dec_label_pc_1ed9a, label %dec_label_pc_1ed88

dec_label_pc_1ed88:                               ; preds = %dec_label_pc_1ed73
  %1 = mul i32 %data, 2
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_1ed9a

dec_label_pc_1ed9a:                               ; preds = %dec_label_pc_1ed88, %dec_label_pc_1ed73
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

