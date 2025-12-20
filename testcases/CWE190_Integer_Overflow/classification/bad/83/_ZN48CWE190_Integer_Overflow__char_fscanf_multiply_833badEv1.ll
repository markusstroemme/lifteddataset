@global_var_73552 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i8 %arg2) local_unnamed_addr {
dec_label_pc_4435a:
  %0 = bitcast ptr %result to ptr
  store i8 %arg2, ptr %0, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73552, ptr %result)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4439e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp slt i8 %2, 1
  br i1 %3, label %dec_label_pc_443d0, label %dec_label_pc_443b9

dec_label_pc_443b9:                               ; preds = %dec_label_pc_4439e
  %4 = mul i8 %2, 2
  call void @printHexCharLine(i8 %4)
  br label %dec_label_pc_443d0

dec_label_pc_443d0:                               ; preds = %dec_label_pc_443b9, %dec_label_pc_4439e
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_444c5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-18 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-18, i8 32)
  call void @anon1(ptr nonnull %stack_var_-18)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_44516, label %dec_label_pc_44511

dec_label_pc_44511:                               ; preds = %dec_label_pc_444c5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_44516

dec_label_pc_44516:                               ; preds = %dec_label_pc_44511, %dec_label_pc_444c5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

