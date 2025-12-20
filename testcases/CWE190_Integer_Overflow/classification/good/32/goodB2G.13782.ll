@global_var_724a0 = external constant [4 x i8]
@global_var_724a8 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3a229:
  %dataPtr2_-56 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %dataPtr2_-56 to ptr
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @global_var_a5080, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_724a0, ptr nonnull %dataPtr2_-56)
  %4 = load ptr, ptr %dataPtr2_-56, align 8
  %5 = icmp slt ptr %4, inttoptr (i64 1 to ptr)
  br i1 %5, label %dec_label_pc_3a2de, label %dec_label_pc_3a2a6

dec_label_pc_3a2a6:                               ; preds = %dec_label_pc_3a229
  %6 = icmp sgt ptr %4, inttoptr (i64 4611686018427387902 to ptr)
  br i1 %6, label %dec_label_pc_3a2cf, label %dec_label_pc_3a2b6

dec_label_pc_3a2b6:                               ; preds = %dec_label_pc_3a2a6
  %7 = ptrtoint ptr %4 to i64
  %8 = mul i64 %7, 2
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_3a2de

dec_label_pc_3a2cf:                               ; preds = %dec_label_pc_3a2a6
  call void @printLine(ptr @global_var_724a8)
  br label %dec_label_pc_3a2de

dec_label_pc_3a2de:                               ; preds = %dec_label_pc_3a2cf, %dec_label_pc_3a2b6, %dec_label_pc_3a229
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_3a2f3, label %dec_label_pc_3a2ee

dec_label_pc_3a2ee:                               ; preds = %dec_label_pc_3a2de
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a2f3

dec_label_pc_3a2f3:                               ; preds = %dec_label_pc_3a2ee, %dec_label_pc_3a2de
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

