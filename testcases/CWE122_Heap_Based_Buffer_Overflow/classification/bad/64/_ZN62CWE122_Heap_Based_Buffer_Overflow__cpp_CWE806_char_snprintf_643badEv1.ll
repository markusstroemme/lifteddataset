@global_var_47b0e = external constant [3 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_380a3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3810e, label %dec_label_pc_38109

dec_label_pc_38109:                               ; preds = %dec_label_pc_380a3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3810e

dec_label_pc_3810e:                               ; preds = %dec_label_pc_38109, %dec_label_pc_380a3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3818d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %arg1 to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %3, i32 %2, ptr @global_var_47b0e, ptr %arg1)
  call void @printLine(ptr %1)
  %5 = icmp eq ptr %arg1, null
  br i1 %5, label %dec_label_pc_38242, label %dec_label_pc_38236

dec_label_pc_38236:                               ; preds = %dec_label_pc_3818d
  %6 = zext i32 %2 to i64
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %7)
  br label %dec_label_pc_38242

dec_label_pc_38242:                               ; preds = %dec_label_pc_38236, %dec_label_pc_3818d
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_38257, label %dec_label_pc_38252

dec_label_pc_38252:                               ; preds = %dec_label_pc_38242
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_38257

dec_label_pc_38257:                               ; preds = %dec_label_pc_38252, %dec_label_pc_38242
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

