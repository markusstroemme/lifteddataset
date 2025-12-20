@global_var_74dd8 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4bcff:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = xor i32 %6, 255
  %storemerge.v = select i1 %3, i32 %7, i32 %6
  %8 = trunc i32 %storemerge.v to i8
  %9 = icmp eq i8 %8, 127
  br i1 %9, label %dec_label_pc_4bd7e, label %dec_label_pc_4bd67

dec_label_pc_4bd67:                               ; preds = %dec_label_pc_4bcff
  %10 = mul i32 %storemerge.v, 16777216
  %sext3 = add i32 %10, 16777216
  %11 = udiv i32 %sext3, 16777216
  %12 = trunc i32 %11 to i8
  call void @printHexCharLine(i8 %12)
  br label %dec_label_pc_4bd8d

dec_label_pc_4bd7e:                               ; preds = %dec_label_pc_4bcff
  call void @printLine(ptr @global_var_74dd8)
  br label %dec_label_pc_4bd8d

dec_label_pc_4bd8d:                               ; preds = %dec_label_pc_4bd7e, %dec_label_pc_4bd67
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_4bda2, label %dec_label_pc_4bd9d

dec_label_pc_4bd9d:                               ; preds = %dec_label_pc_4bd8d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4bda2

dec_label_pc_4bda2:                               ; preds = %dec_label_pc_4bd9d, %dec_label_pc_4bd8d
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

