@global_var_86948 = external constant [3 x i8]
@global_var_8694b = external constant [21 x i8]
@global_var_86960 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_37116:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_37168, label %dec_label_pc_37146

dec_label_pc_37146:                               ; preds = %dec_label_pc_37116
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_86948, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_37168

dec_label_pc_37168:                               ; preds = %dec_label_pc_37146, %dec_label_pc_37116
  %5 = call i32 @globalReturnsFalse()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_37187, label %dec_label_pc_37176

dec_label_pc_37176:                               ; preds = %dec_label_pc_37168
  call void @printLine(ptr @global_var_8694b)
  br label %dec_label_pc_371bb

dec_label_pc_37187:                               ; preds = %dec_label_pc_37168
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %dec_label_pc_371ac, label %dec_label_pc_37191

dec_label_pc_37191:                               ; preds = %dec_label_pc_37187
  %10 = mul i64 %7, 4294967296
  %sext = add i64 %10, 4294967296
  %11 = ashr exact i64 %sext, 32
  store i64 %11, ptr %stack_var_-24, align 8
  %12 = trunc i64 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_371bb

dec_label_pc_371ac:                               ; preds = %dec_label_pc_37187
  call void @printLine(ptr @global_var_86960)
  br label %dec_label_pc_371bb

dec_label_pc_371bb:                               ; preds = %dec_label_pc_371ac, %dec_label_pc_37191, %dec_label_pc_37176
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_371d0, label %dec_label_pc_371cb

dec_label_pc_371cb:                               ; preds = %dec_label_pc_371bb
  call void @__stack_chk_fail()
  br label %dec_label_pc_371d0

dec_label_pc_371d0:                               ; preds = %dec_label_pc_371cb, %dec_label_pc_371bb
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6a669:
  ret i32 0
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

