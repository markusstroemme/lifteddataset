@staticTrue = external local_unnamed_addr global i32
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_31138:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @staticTrue, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_3118c, label %dec_label_pc_3116b

dec_label_pc_3116b:                               ; preds = %dec_label_pc_31138
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 99)
  %6 = add i64 %1, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_3118c

dec_label_pc_3118c:                               ; preds = %dec_label_pc_3116b, %dec_label_pc_31138
  %8 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call ptr @strcpy(ptr nonnull %9, ptr %8)
  call void @printLine(ptr %8)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %dec_label_pc_311f4, label %dec_label_pc_311e8

dec_label_pc_311e8:                               ; preds = %dec_label_pc_3118c
  %12 = inttoptr i64 %1 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_311f4

dec_label_pc_311f4:                               ; preds = %dec_label_pc_311e8, %dec_label_pc_3118c
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_31209, label %dec_label_pc_31204

dec_label_pc_31204:                               ; preds = %dec_label_pc_311f4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_31209

dec_label_pc_31209:                               ; preds = %dec_label_pc_31204, %dec_label_pc_311f4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

