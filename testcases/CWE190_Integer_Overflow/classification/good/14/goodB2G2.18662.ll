@global_var_8ae98 = external constant [3 x i8]
@global_var_8aeb0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5e819:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_5e868, label %dec_label_pc_5e846

dec_label_pc_5e846:                               ; preds = %dec_label_pc_5e819
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_8ae98, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_5e868

dec_label_pc_5e868:                               ; preds = %dec_label_pc_5e846, %dec_label_pc_5e819
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_5e8a5, label %dec_label_pc_5e873

dec_label_pc_5e873:                               ; preds = %dec_label_pc_5e868
  %8 = load i32, ptr %stack_var_-24, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_5e896, label %dec_label_pc_5e87b

dec_label_pc_5e87b:                               ; preds = %dec_label_pc_5e873
  %10 = add i32 %8, 1
  store i32 %10, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_5e8a5

dec_label_pc_5e896:                               ; preds = %dec_label_pc_5e873
  call void @printLine(ptr @global_var_8aeb0)
  br label %dec_label_pc_5e8a5

dec_label_pc_5e8a5:                               ; preds = %dec_label_pc_5e896, %dec_label_pc_5e87b, %dec_label_pc_5e868
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_5e8ba, label %dec_label_pc_5e8b5

dec_label_pc_5e8b5:                               ; preds = %dec_label_pc_5e8a5
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e8ba

dec_label_pc_5e8ba:                               ; preds = %dec_label_pc_5e8b5, %dec_label_pc_5e8a5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

