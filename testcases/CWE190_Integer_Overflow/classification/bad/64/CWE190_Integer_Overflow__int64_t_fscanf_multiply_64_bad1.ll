@global_var_72796 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3b91d:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72796, ptr nonnull %stack_var_-24)
  %3 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_3b983, label %dec_label_pc_3b97e

dec_label_pc_3b97e:                               ; preds = %dec_label_pc_3b91d
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b983

dec_label_pc_3b983:                               ; preds = %dec_label_pc_3b97e, %dec_label_pc_3b91d
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_3ba5a:
  %0 = icmp slt ptr %dataVoidPtr, inttoptr (i64 1 to ptr)
  br i1 %0, label %dec_label_pc_3ba9b, label %dec_label_pc_3ba84

dec_label_pc_3ba84:                               ; preds = %dec_label_pc_3ba5a
  %1 = ptrtoint ptr %dataVoidPtr to i64
  %2 = mul i64 %1, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_3ba9b

dec_label_pc_3ba9b:                               ; preds = %dec_label_pc_3ba84, %dec_label_pc_3ba5a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

