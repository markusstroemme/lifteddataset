@global_var_6edb8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_4b14b:
  %0 = ptrtoint ptr %arg1 to i64
  store i32 -1, ptr %arg1, align 4
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_4b164:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_4b1c6, label %dec_label_pc_4b199

dec_label_pc_4b199:                               ; preds = %dec_label_pc_4b164
  %4 = icmp ult i32 %2, 2147483647
  br i1 %4, label %dec_label_pc_4b1a3, label %dec_label_pc_4b1b7

dec_label_pc_4b1a3:                               ; preds = %dec_label_pc_4b199
  %5 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_4b1c6

dec_label_pc_4b1b7:                               ; preds = %dec_label_pc_4b199
  call void @printLine(ptr @global_var_6edb8)
  br label %dec_label_pc_4b1c6

dec_label_pc_4b1c6:                               ; preds = %dec_label_pc_4b1b7, %dec_label_pc_4b1a3, %dec_label_pc_4b164
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_4b1db, label %dec_label_pc_4b1d6

dec_label_pc_4b1d6:                               ; preds = %dec_label_pc_4b1c6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4b1db

dec_label_pc_4b1db:                               ; preds = %dec_label_pc_4b1d6, %dec_label_pc_4b1c6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

