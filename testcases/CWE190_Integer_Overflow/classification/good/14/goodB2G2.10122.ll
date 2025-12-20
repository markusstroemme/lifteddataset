@global_var_86a28 = external constant [3 x i8]
@global_var_86a40 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_379b1:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_37a00, label %dec_label_pc_379de

dec_label_pc_379de:                               ; preds = %dec_label_pc_379b1
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_86a28, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_37a00

dec_label_pc_37a00:                               ; preds = %dec_label_pc_379de, %dec_label_pc_379b1
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_37a3f, label %dec_label_pc_37a0b

dec_label_pc_37a0b:                               ; preds = %dec_label_pc_37a00
  %8 = load i64, ptr %stack_var_-24, align 8
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 2147483647
  br i1 %10, label %dec_label_pc_37a30, label %dec_label_pc_37a15

dec_label_pc_37a15:                               ; preds = %dec_label_pc_37a0b
  %11 = mul i64 %8, 4294967296
  %sext = add i64 %11, 4294967296
  %12 = ashr exact i64 %sext, 32
  store i64 %12, ptr %stack_var_-24, align 8
  %13 = trunc i64 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_37a3f

dec_label_pc_37a30:                               ; preds = %dec_label_pc_37a0b
  call void @printLine(ptr @global_var_86a40)
  br label %dec_label_pc_37a3f

dec_label_pc_37a3f:                               ; preds = %dec_label_pc_37a30, %dec_label_pc_37a15, %dec_label_pc_37a00
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_37a54, label %dec_label_pc_37a4f

dec_label_pc_37a4f:                               ; preds = %dec_label_pc_37a3f
  call void @__stack_chk_fail()
  br label %dec_label_pc_37a54

dec_label_pc_37a54:                               ; preds = %dec_label_pc_37a4f, %dec_label_pc_37a3f
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

