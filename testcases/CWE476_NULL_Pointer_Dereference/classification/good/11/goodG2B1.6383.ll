@global_var_4899a = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_18b7f:
  %tmpData_-32.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_18bb9, label %dec_label_pc_18ba8

dec_label_pc_18ba8:                               ; preds = %dec_label_pc_18b7f
  call void @printLine(ptr @global_var_4899a)
  br label %dec_label_pc_18bcf

dec_label_pc_18bb9:                               ; preds = %dec_label_pc_18b7f
  store i32 0, ptr %stack_var_-24, align 4
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %tmpData_-32.0.reg2mem, align 8
  br label %dec_label_pc_18bcf

dec_label_pc_18bcf:                               ; preds = %dec_label_pc_18bb9, %dec_label_pc_18ba8
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_18bea, label %dec_label_pc_18bdd

dec_label_pc_18bdd:                               ; preds = %dec_label_pc_18bcf
  %tmpData_-32.0.reload = load i64, ptr %tmpData_-32.0.reg2mem, align 8
  %6 = inttoptr i64 %tmpData_-32.0.reload to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_18bea

dec_label_pc_18bea:                               ; preds = %dec_label_pc_18bdd, %dec_label_pc_18bcf
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_18bff, label %dec_label_pc_18bfa

dec_label_pc_18bfa:                               ; preds = %dec_label_pc_18bea
  call void @__stack_chk_fail()
  br label %dec_label_pc_18bff

dec_label_pc_18bff:                               ; preds = %dec_label_pc_18bfa, %dec_label_pc_18bea
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3d04e:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

