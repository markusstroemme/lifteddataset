@global_var_6da7e = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32
@global_var_9c070 = external global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_459a6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_459ed, label %dec_label_pc_459db

dec_label_pc_459db:                               ; preds = %dec_label_pc_459a6
  %4 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_459ed

dec_label_pc_459ed:                               ; preds = %dec_label_pc_459db, %dec_label_pc_459a6
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_45a02, label %dec_label_pc_459fd

dec_label_pc_459fd:                               ; preds = %dec_label_pc_459ed
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45a02

dec_label_pc_45a02:                               ; preds = %dec_label_pc_459fd, %dec_label_pc_459ed
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_45af0:
  %0 = load ptr, ptr @global_var_9c070, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_6da7e, ptr %arg1)
  %2 = sext i32 %1 to i64
  ret i64 %2
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

