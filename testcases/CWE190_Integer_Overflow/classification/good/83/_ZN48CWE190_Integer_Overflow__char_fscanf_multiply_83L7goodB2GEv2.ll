@global_var_73560 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_73558 = external constant [3 x i8]

define void @anon0(ptr %result, i8 %arg2) local_unnamed_addr {
dec_label_pc_443d4:
  %0 = bitcast ptr %result to ptr
  store i8 %arg2, ptr %0, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73558)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_44418:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp slt i8 %2, 1
  br i1 %3, label %dec_label_pc_44466, label %dec_label_pc_44433

dec_label_pc_44433:                               ; preds = %dec_label_pc_44418
  %4 = icmp sgt i8 %2, 62
  br i1 %4, label %dec_label_pc_44457, label %dec_label_pc_4443e

dec_label_pc_4443e:                               ; preds = %dec_label_pc_44433
  %5 = mul i8 %2, 2
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_44466

dec_label_pc_44457:                               ; preds = %dec_label_pc_44433
  call void @printLine(ptr @global_var_73560)
  br label %dec_label_pc_44466

dec_label_pc_44466:                               ; preds = %dec_label_pc_44457, %dec_label_pc_4443e, %dec_label_pc_44418
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_4456b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-18 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-18, i8 32)
  call void @anon1(ptr nonnull %stack_var_-18)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_445bc, label %dec_label_pc_445b7

dec_label_pc_445b7:                               ; preds = %dec_label_pc_4456b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_445bc

dec_label_pc_445bc:                               ; preds = %dec_label_pc_445b7, %dec_label_pc_4456b
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

