@global_var_7269e = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3b005:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_7269e, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon1(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_3b06b, label %dec_label_pc_3b066

dec_label_pc_3b066:                               ; preds = %dec_label_pc_3b005
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b06b

dec_label_pc_3b06b:                               ; preds = %dec_label_pc_3b066, %dec_label_pc_3b005
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_3b11f:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_3b17c:
  call void @anon3(i64 %data)
  ret void
}

define void @anon3(i64 %data) local_unnamed_addr {
dec_label_pc_3b1d9:
  %0 = icmp slt i64 %data, 1
  br i1 %0, label %dec_label_pc_3b207, label %dec_label_pc_3b1f0

dec_label_pc_3b1f0:                               ; preds = %dec_label_pc_3b1d9
  %1 = mul i64 %data, 2
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_3b207

dec_label_pc_3b207:                               ; preds = %dec_label_pc_3b1f0, %dec_label_pc_3b1d9
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

