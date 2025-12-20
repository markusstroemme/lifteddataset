@global_var_75ff8 = external constant [4 x i8]
@global_var_76000 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_51dda:
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_75ff8, ptr %arg1)
  %2 = sext i32 %1 to i64
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_51e0f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp eq i64 %3, 9223372036854775807
  br i1 %4, label %dec_label_pc_51e6b, label %dec_label_pc_51e51

dec_label_pc_51e51:                               ; preds = %dec_label_pc_51e0f
  %5 = add i64 %3, 1
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_51e7a

dec_label_pc_51e6b:                               ; preds = %dec_label_pc_51e0f
  call void @printLine(ptr @global_var_76000)
  br label %dec_label_pc_51e7a

dec_label_pc_51e7a:                               ; preds = %dec_label_pc_51e6b, %dec_label_pc_51e51
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_51e8f, label %dec_label_pc_51e8a

dec_label_pc_51e8a:                               ; preds = %dec_label_pc_51e7a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_51e8f

dec_label_pc_51e8f:                               ; preds = %dec_label_pc_51e8a, %dec_label_pc_51e7a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

