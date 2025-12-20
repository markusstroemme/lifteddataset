@global_var_48934 = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.622() local_unnamed_addr {
dec_label_pc_1843b:
  ret i32 1
}

define i32 @staticReturnsFalse.623() local_unnamed_addr {
dec_label_pc_1844a:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1855a:
  %tmpData_-32.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.623()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_18594, label %dec_label_pc_18583

dec_label_pc_18583:                               ; preds = %dec_label_pc_1855a
  call void @printLine(ptr @global_var_48934)
  br label %dec_label_pc_185aa

dec_label_pc_18594:                               ; preds = %dec_label_pc_1855a
  store i32 0, ptr %stack_var_-24, align 4
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %tmpData_-32.0.reg2mem, align 8
  br label %dec_label_pc_185aa

dec_label_pc_185aa:                               ; preds = %dec_label_pc_18594, %dec_label_pc_18583
  %4 = call i32 @staticReturnsTrue.622()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_185c5, label %dec_label_pc_185b8

dec_label_pc_185b8:                               ; preds = %dec_label_pc_185aa
  %tmpData_-32.0.reload = load i64, ptr %tmpData_-32.0.reg2mem, align 8
  %6 = inttoptr i64 %tmpData_-32.0.reload to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_185c5

dec_label_pc_185c5:                               ; preds = %dec_label_pc_185b8, %dec_label_pc_185aa
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_185da, label %dec_label_pc_185d5

dec_label_pc_185d5:                               ; preds = %dec_label_pc_185c5
  call void @__stack_chk_fail()
  br label %dec_label_pc_185da

dec_label_pc_185da:                               ; preds = %dec_label_pc_185d5, %dec_label_pc_185c5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

