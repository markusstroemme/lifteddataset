@global_var_67908 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10937:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_10986, label %dec_label_pc_10964

dec_label_pc_10964:                               ; preds = %dec_label_pc_10937
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_67908, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_9c06c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_10986

dec_label_pc_10986:                               ; preds = %dec_label_pc_10964, %dec_label_pc_10937
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_109a4, label %dec_label_pc_10991

dec_label_pc_10991:                               ; preds = %dec_label_pc_10986
  %8 = load i32, ptr %stack_var_-24, align 4
  %9 = add i32 %8, 1
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_109a4

dec_label_pc_109a4:                               ; preds = %dec_label_pc_10991, %dec_label_pc_10986
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_109b9, label %dec_label_pc_109b4

dec_label_pc_109b4:                               ; preds = %dec_label_pc_109a4
  call void @__stack_chk_fail()
  br label %dec_label_pc_109b9

dec_label_pc_109b9:                               ; preds = %dec_label_pc_109b4, %dec_label_pc_109a4
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

